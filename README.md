# ansible-compile-source
This is an Ansible role for compiling a program for source and then installing it. Currently, only Debian Linux flavors are supported.  Vars and tasks for compiling rootsh are included as an example.

##### Task Overview
1. Import vars for distribution and application that will be compiled.
2. Import and run pre-compile tasks (if any)
3. Install build tools appropriate to Linux distro
4. Create temp dir; download and unarchive source
5. Run `configure` commands (to prep build for your OS)
6. Build application with `make`
7. Install application with `make install`
8. Import ant run post-compile tasks (if any)
9. Clean up source files

##### Instructions
1. To compile application `foo`, copy `vars/TEMPLATE.yml` to `vars/foo.yml`
2. Follow the instructions in `vars/foo.yml` to set the parameters for application `foo`
3. Add any pre-compile tasks and post-compile tasks to `tasks/foo/pre.yml` and `tasks/foo/post.yml`

##### Roadmap
1. Add vars/RedHat.yml containing RedHat build prereqs.
2. Test on compiling multiple applications
