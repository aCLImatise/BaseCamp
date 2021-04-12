from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Gappa_Examine_Info_V0_1_0 = CommandToolBuilder(tool="gappa_examine_info", base_command=["gappa", "examine", "info"], inputs=[ToolInput(tag="in_j_place_path", input_type=File(optional=True), prefix="--jplace-path", doc=InputDocumentation(doc=":PATH(existing)=[] ... REQUIRED\nList of jplace files or directories to process. For directories, only files with the extension `.jplace[.gz]` are processed.")), ToolInput(tag="in_allow_file_overwriting", input_type=Boolean(optional=True), prefix="--allow-file-overwriting", doc=InputDocumentation(doc="Allow to overwrite existing output files instead of aborting the command.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Produce more verbose output.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="=1            Number of threads to use for calculations.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Write all output to a log file, in addition to standard output to the terminal."))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="Write all output to a log file, in addition to standard output to the terminal."))], container="quay.io/biocontainers/gappa:0.7.1--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gappa_Examine_Info_V0_1_0().translate("wdl")

