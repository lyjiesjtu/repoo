WARNING: unable to configure logging. No log files will be generated
Checking log directory for disk usage. This may take awhile.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

Resource not found: roslaunch
The traceback for the exception was written to the log file
Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/roslaunch/__init__.py", line 322, in main
    p.start()
  File "/usr/lib/python3/dist-packages/roslaunch/parent.py", line 277, in start
    self._start_infrastructure()
  File "/usr/lib/python3/dist-packages/roslaunch/parent.py", line 226, in _start_infrastructure
    self._load_config()
  File "/usr/lib/python3/dist-packages/roslaunch/parent.py", line 137, in _load_config
    self.config = roslaunch.config.load_config_default(self.roslaunch_files, self.port,
  File "/usr/lib/python3/dist-packages/roslaunch/config.py", line 447, in load_config_default
    load_roscore(loader, config, verbose=verbose)
  File "/usr/lib/python3/dist-packages/roslaunch/config.py", line 92, in load_roscore
    f_roscore = get_roscore_filename()
  File "/usr/lib/python3/dist-packages/roslaunch/config.py", line 84, in get_roscore_filename
    return os.path.join(r.get_path('roslaunch'), 'resources', 'roscore.xml')
  File "/usr/lib/python3/dist-packages/rospkg/rospack.py", line 207, in get_path
    raise ResourceNotFound(name, ros_paths=self._ros_paths)
rospkg.common.ResourceNotFound: roslaunch

