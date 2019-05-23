## Dependencies 
#### This is my current setup and may work on older versions of all dependencies
|Name | Version | Repo/Link |
| ------ | ----- | ------ |
| Linux | 4.4 (Ubuntu 16.04 LTS) |
| Bash | 4.3.48 |
| Curl | 7.47.0 |
| jq | jq-1.5-1-a5b5cbe | https://stedolan.github.io/jq/download/ |
| Bats | Bats 1.1.0 | https://github.com/bats-core/bats-core |

## Usage 

```sh
./consoleApplication.sh <albumId>
```

## Testing 

```sh
bats test.sh
```