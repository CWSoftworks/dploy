# DPLY Helper
REPO="CWSoftworks/dploy"
VERSION_FILE=".data/version.txt"

LATEST_VERSION=$(curl -s "https://api.github.com/repos/$REPO/releases/latest" | jq -r .tag_name)

if [[ -z "$LATEST_VERSION" || "$LATEST_VERSION" == "null" ]]; then
    echo "Failed to retrieve the latest version from GitHub."
    exit 1
else
    echo "Latest Version: $LATEST_VERSION"
fi

if [[ ! -f "$VERSION_FILE" ]]; then
    echo "Version file not found."
    exit 1
fi
STORED_VERSION=$(cat "$VERSION_FILE" | tr -d '[:space:]'

if [[ "$LATEST_VERSION" == "$STORED_VERSION" || "$STORED_VERSION" == "bypass" ]]; then
    echo "Version is up to date"
else
    echo "DPLOY Version is not up to date, set .data/version.txt to 'bypass' to bypass, version checking is enabled by default for security"
    exit 1
fi

echo "DPLY Helper Started"
