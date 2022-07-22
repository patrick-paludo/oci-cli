# Oracle Cloud Infraestructure CLI in a Docker container!

### Usage
1. Download **[oci](https://github.com/patrick-paludo/oci-cli/releases/latest)** script:
```bash
wget https://github.com/patrick-paludo/oci-cli/releases/download/v1.0.0/oci

```
2. Move the oci script to /usr/local/bin/oci (or wherever you want):
```bash
sudo mv oci /usr/local/bin/oci

```
3. Grant execution permission:
```bash
sudo chmod +x /usr/local/bin/oci

```
4. Test the script (the container image will be downloaded in the first run):
```bash
oci --version
```
The output should be the OCI CLI version

5. Create .oci directory and place your private key in it:
```bash
mkdir ~/.oci && mv path_to_private_key ~/.oci

```
6. Run the OCI CLI setup:
```bash
oci setup config
```


### Build your own image
1. Clone the repository:
```bash
git clone https://github.com/patrick-paludo/oci-cli.git
```

2. Enter **oci-cli** directory and run the build command:
```bash
cd oci-cli && docker build -t oci-cli .
```

3. Continue from step 2 of [Usage](https://github.com/patrick-paludo/oci-cli/edit/main/README.md#usage)


