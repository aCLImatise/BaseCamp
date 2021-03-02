from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String, Boolean

Phyluce_Genetrees_Run_Raxml_Bootstraps_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_run_raxml_bootstraps", base_command=["phyluce_genetrees_run_raxml_bootstraps"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing alignments to be summarized.")), ToolInput(tag="in_best_trees", input_type=Directory(optional=True), prefix="--best-trees", doc=InputDocumentation(doc="The directory containing the best trees")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory to hold alignments")), ToolInput(tag="in_boot_reps", input_type=Int(optional=True), prefix="--bootreps", doc=InputDocumentation(doc="The number of bootstrap replicates to run")), ToolInput(tag="in_out_group", input_type=String(optional=True), prefix="--outgroup", doc=InputDocumentation(doc="The outgroup to use")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="The number of RAxML threads to run (best to determine\nempirically)")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of concurrent RAxML jobs to run")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress the CPU usage question"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output directory to hold alignments"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Run_Raxml_Bootstraps_V0_1_0().translate("wdl", allow_empty_container=True)

