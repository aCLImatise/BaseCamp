from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean, String

Jobtreekill_V0_1_0 = CommandToolBuilder(tool="jobTreeKill", base_command=["jobTreeKill"], inputs=[ToolInput(tag="in_tempdir_root", input_type=File(optional=True), prefix="--tempDirRoot", doc=InputDocumentation(doc="Path to where temporary directory containing all temp\nfiles are created, by default uses the current working\ndirectory as the base.")), ToolInput(tag="in_job_tree", input_type=Directory(optional=True), prefix="--jobTree", doc=InputDocumentation(doc="Directory containing the job tree to kill")), ToolInput(tag="in_logoff", input_type=Boolean(optional=True), prefix="--logOff", doc=InputDocumentation(doc="Turn off logging. (default is CRITICAL)")), ToolInput(tag="in_loginfo", input_type=Boolean(optional=True), prefix="--logInfo", doc=InputDocumentation(doc="Turn on logging at INFO level. (default is CRITICAL)")), ToolInput(tag="in_log_debug", input_type=Boolean(optional=True), prefix="--logDebug", doc=InputDocumentation(doc="Turn on logging at DEBUG level. (default is CRITICAL)")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--logLevel", doc=InputDocumentation(doc="Log at level (may be either OFF/INFO/DEBUG/CRITICAL).\n(default is CRITICAL)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logFile", doc=InputDocumentation(doc="File to log in")), ToolInput(tag="in_rotating_logging", input_type=Boolean(optional=True), prefix="--rotatingLogging", doc=InputDocumentation(doc="Turn on rotating logging, which prevents log files\ngetting too big.\n")), ToolInput(tag="in_job_tree_dir", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_more", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jobtreekill_V0_1_0().translate("wdl", allow_empty_container=True)

