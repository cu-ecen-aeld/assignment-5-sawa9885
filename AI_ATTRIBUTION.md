# AI Assistance Attribution

## Assignment 5 Part 2 - Buildroot Socket Server Integration

- Full chat history: Pending completion of the required interactive review;
  the full-thread link will be added afterward.
- AI-assisted files:
  `base_external/package/aesd-assignments/aesd-assignments.mk`, `runqemu.sh`,
  and `AI_ATTRIBUTION.md`. The Assignment 5 workflow, assignment-selection,
  and `save-config.sh` changes came from the course-provided
  `buildroot-assignments-base/assignment5` merge.
- Assistance provided: Added cross-compilation and target installation of
  `aesdsocket`, installed its init script as `/etc/init.d/S99aesdsocket`, and
  added QEMU host forwarding for port 9000 while retaining SSH forwarding on
  port 10022. Configured the new Assignment 5 classroom repository as
  `origin` while preserving the Assignment 4 remote.
- Student review and verification: Interactive review is in progress; no
  claim of student understanding has been recorded yet. A local-source
  Buildroot package build produced an AArch64 executable and image. QEMU
  automatically started the server, SSH and socket forwarding worked, the
  course socket test passed, graceful halt ran the stop script, and a restart
  confirmed old socket data was absent. GitHub Actions verification remains
  pending.
- External code and sources: Course Assignment 5 instructions, course starter
  repositories and tests, and upstream Buildroot 2024.02.13. No external
  implementation code was reused.
- Other student assignments used: No.

## Assignment 4 Part 2 - Buildroot Environment Bringup

- Full chat history: https://chatgpt.com/s/cx_6aab4ce579e88191872276dcf9a3ca97
- AI-assisted files: `.gitmodules`, `.github/workflows/github-actions.yml`,
  `base_external/Config.in`,
  `base_external/external.desc`, `base_external/external.mk`,
  `base_external/configs/aesd_qemu_defconfig`,
  `base_external/package/aesd-assignments/aesd-assignments.mk`, `clean.sh`, and
  `AI_ATTRIBUTION.md`.
- Assistance provided: Added and pinned the Buildroot submodule, created the
  external-tree metadata, implemented the source package build and target
  installation rules, saved the AESD package/Dropbear/root-password
  configuration, and added the required clean script. After a clean Actions
  build exceeded the original two-hour limit while downloading dependencies,
  AI assistance increased the job timeout and added a persistent Buildroot
  download cache.
- Student review and verification: The student explained working-directory
  path resolution, reproducible source revisions, cross-compilation, staging
  under `TARGET_DIR`, fail-fast behavior, safer production SSH access, and the
  end-to-end Buildroot/QEMU flow. Source-side and configuration validation,
  the full image build, AArch64 QEMU boot, SSH/SCP checks, syslog verification,
  and the course `full-test.sh` passed. GitHub Actions run
  `35456772299` also completed successfully from a clean checkout.
  The student also explained that the first cache-enabled workflow run must
  populate the cache, while subsequent runs can reuse the cached downloads.
- External code and sources: Course starter files, course Assignment 4 Part 2
  instructions, course tests, and upstream Buildroot 2024.02.13. No external
  implementation code was reused.
- Other student assignments used: No.
