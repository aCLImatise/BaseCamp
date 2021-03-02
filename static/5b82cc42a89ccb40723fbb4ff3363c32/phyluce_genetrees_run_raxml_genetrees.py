from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int, Boolean, File

Phyluce_Genetrees_Run_Raxml_Genetrees_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_run_raxml_genetrees", base_command=["phyluce_genetrees_run_raxml_genetrees"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="The input directory containing alignments in phylip")), ToolInput(tag="in_out_group", input_type=String(optional=True), prefix="--outgroup", doc=InputDocumentation(doc="The outgroup to use")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="The number of RAxML threads to run (best to determine\nempirically)")), ToolInput(tag="in_tree_searches", input_type=Int(optional=True), prefix="--tree-searches", doc=InputDocumentation(doc="The number of tree searches to run.")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of concurrent RAxML jobs to run")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress the CPU usage question")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="")), ToolInput(tag="in_format", input_type=String(), position=0, doc=InputDocumentation(doc="--output OUTPUT       The output directory to hold alignments"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Run_Raxml_Genetrees_V0_1_0().translate("wdl", allow_empty_container=True)

