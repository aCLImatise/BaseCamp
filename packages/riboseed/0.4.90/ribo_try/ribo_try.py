from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, String

Ribo_Try_V0_1_0 = CommandToolBuilder(tool="ribo_try", base_command=["ribo", "try"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="output directory; default: /riboSeed_sample_results")), ToolInput(tag="in_verbosity", input_type=File(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="cores to be used; default: 2")), ToolInput(tag="in_threads", input_type=String(optional=True), prefix="--threads", doc=InputDocumentation(doc="if your cores are hyperthreaded, set number threads to\nthe number of threads per processer.If unsure, see\n'cat /proc/cpuinfo' under 'cpu cores', or 'lscpu'\nunder 'Thread(s) per core'.: 1")), ToolInput(tag="in_memory", input_type=Int(optional=True), prefix="--memory", doc=InputDocumentation(doc="system memory available; default: 8"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output directory; default: /riboSeed_sample_results")), ToolOutput(tag="out_verbosity", output_type=File(optional=True), selector=InputSelector(input_to_select="in_verbosity", type_hint=File()), doc=OutputDocumentation(doc="Logger writes debug to file in output dir; this sets\nverbosity level sent to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\ndefault: 2"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribo_Try_V0_1_0().translate("wdl", allow_empty_container=True)

