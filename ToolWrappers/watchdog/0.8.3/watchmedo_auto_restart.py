from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean, Float

Watchmedo_Auto_Restart_V0_1_0 = CommandToolBuilder(tool="watchmedo_auto_restart", base_command=["watchmedo", "auto-restart"], inputs=[ToolInput(tag="in_directory", input_type=Directory(optional=True), prefix="--directory", doc=InputDocumentation(doc="Directory to watch. Use another -d or --directory\noption for each directory. (default: -)")), ToolInput(tag="in_patterns", input_type=String(optional=True), prefix="--patterns", doc=InputDocumentation(doc="matches event paths with these patterns (separated by\n;). (default: '*')")), ToolInput(tag="in_ignore_patterns", input_type=String(optional=True), prefix="--ignore-patterns", doc=InputDocumentation(doc="ignores event paths with these patterns (separated by\n;). (default: '')")), ToolInput(tag="in_ignore_directories", input_type=Boolean(optional=True), prefix="--ignore-directories", doc=InputDocumentation(doc="ignores events for directories (default: False)")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="monitors the directories recursively (default: False)")), ToolInput(tag="in_interval", input_type=Float(optional=True), prefix="--interval", doc=InputDocumentation(doc="use this as the polling interval/blocking timeout\n(default: 1.0)")), ToolInput(tag="in_signal", input_type=String(optional=True), prefix="--signal", doc=InputDocumentation(doc="stop the subprocess with this signal (default SIGINT)\n(default: 'SIGINT')")), ToolInput(tag="in_kill_after", input_type=Float(optional=True), prefix="--kill-after", doc=InputDocumentation(doc="when stopping, kill the subprocess after the specified\ntimeout (default 10) (default: 10.0)\n")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="Long-running command to run in a subprocess.")), ToolInput(tag="in_arg", input_type=String(), position=1, doc=InputDocumentation(doc="Command arguments. Note: Use -- before the command\narguments, otherwise watchmedo will try to interpret\nthem. (default: -)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Watchmedo_Auto_Restart_V0_1_0().translate("wdl", allow_empty_container=True)

