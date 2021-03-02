from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String, Boolean, File

Phyluce_Genetrees_Run_Raxml_Multilocus_Bootstraps_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_run_raxml_multilocus_bootstraps", base_command=["phyluce_genetrees_run_raxml_multilocus_bootstraps"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="The input directory containing alignments in phylip")), ToolInput(tag="in_output_directory_hold", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory to hold alignments")), ToolInput(tag="in_boot_reps", input_type=Int(optional=True), prefix="--bootreps", doc=InputDocumentation(doc="The number of bootstrap replicates to run")), ToolInput(tag="in_out_group", input_type=String(optional=True), prefix="--outgroup", doc=InputDocumentation(doc="The outgroup to use")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="The number of RAxML threads to run (best to determine\nempirically)")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of concurrent RAxML jobs to run")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress the CPU usage question")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_var_9", input_type=String(), position=0, doc=InputDocumentation(doc="[--bootreps BOOTREPS]")), ToolInput(tag="in_format", input_type=String(), position=0, doc=InputDocumentation(doc="--best-trees BEST_TREES"))], outputs=[ToolOutput(tag="out_output_directory_hold", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_hold", type_hint=File()), doc=OutputDocumentation(doc="The output directory to hold alignments"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Run_Raxml_Multilocus_Bootstraps_V0_1_0().translate("wdl", allow_empty_container=True)

