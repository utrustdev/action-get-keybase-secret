# Github Action - Get Secret from Keybase Git repo

Get a file from a Keybase git repo

## Usage

```
jobs:
  deploy:
    steps:
      - name: Fetch Keybase Secrets
        id: keybase
        uses: utrustdev/action-get-keybase-secret@master
        with:
          repo: keybase://team/your_team/your_repo
          file: secrets/secret.json
          prefix: "keybase-secret-" # optional
        env:
          KEYBASE_PAPERKEY: ${{ secrets.KEYBASE_PAPERKEY }}
          KEYBASE_USERNAME: ${{ secrets.KEYBASE_USERNAME }}
```
