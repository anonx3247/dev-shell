# dev-shell
Ultra-simple wrapper to make the use of nix-shell easier

## Rationale

Lets say you want the packages `git` and `hello` from `nixpkgs` installed in your development-shell.

The nix way is either:
```bash
nix-shell -p git hello
```

Or creating a `shell.nix` file. Which is often too complicated when you just want the most recent verisons of each package.

The solution is `dev-shell`!
## Usage

Retaking our example, you simply create a `.dev` file in your project directory
whose contents are the list of packages:

```
# .dev contents
git
hello
...
```

Then simply run `dev-shell` in the directory and get your nix-shell created!

## Installation

Simply run
```bash
sudo make install
```
