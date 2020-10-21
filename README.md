[![CI](https://github.com/marvel-nccr/ansible-role-aiidalab/workflows/CI/badge.svg)](https://github.com/marvel-nccr/ansible-role-aiidalab/actions)
[![Ansible Role](https://img.shields.io/ansible/role/26169.svg)](https://galaxy.ansible.com/marvel-nccr/aiidalab)
[![Release](https://img.shields.io/github/tag/marvel-nccr/ansible-role-aiidalab.svg)](https://github.com/marvel-nccr/ansible-role-aiidalab/releases)

# Ansible Role: marvel-nccr.aiidalab

An ansible role that installs the [Materials Cloud](www.materialscloud.org) AiiDA Lab environment.

## Installation

`ansible-galaxy install marvel-nccr.aiidalab`

## Role Variables

See `defaults/main.yml`

## Example Playbook

```yaml
- hosts: servers
  roles:
  - role: marvel-nccr.aiidalab
```

## Development and testing

This role uses [Molecule](https://molecule.readthedocs.io/en/latest/#) and [Docker](https://www.docker.com/) for tests.

After installing [Docker](https://www.docker.com/):

Clone the repository into a package named `marvel-nccr.aiidalab` (the folder must be named the same as the Ansible Galaxy name)

```bash
git clone https://github.com/marvel-nccr/ansible-role-aiidalab marvel-nccr.aiidalab
cd marvel-nccr.aiidalab
```

Then run:

```bash
pip install -r requirements.txt  # Installs molecule
molecule test  # runs tests
```

or use tox (see `tox.ini`):

```bash
pip install tox
tox
```

## Code style

Code style is formatted and linted with [pre-commit](https://pre-commit.com/).

```bash
pip install pre-commit
pre-commit run -all
```

## Deployment

Deployment to Ansible Galaxy is automated *via* GitHub Actions.
Simply tag a release `vX.Y.Z` to initiate the CI and release workflow.
Note, the release will only complete if the CI tests pass.

## License

MIT

## Contact

Please direct inquiries regarding Quantum Mobile and associated ansible roles to the [AiiDA mailinglist](http://www.aiida.net/mailing-list/).
