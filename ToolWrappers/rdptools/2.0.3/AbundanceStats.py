from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory

Abundancestats_V0_1_0 = CommandToolBuilder(tool="AbundanceStats", base_command=["AbundanceStats"], inputs=[ToolInput(tag="in_jaccard", input_type=Boolean(optional=True), prefix="--jaccard", doc=InputDocumentation(doc="Compute jaccard abundance stats")), ToolInput(tag="in_lower_cut_off", input_type=File(optional=True), prefix="--lower-cutoff", doc=InputDocumentation(doc="Lowest cutoff in the cluster file to compute\nstats for")), ToolInput(tag="in_result_dir", input_type=Directory(optional=True), prefix="--result-dir", doc=InputDocumentation(doc="Directory to put the result files in\n(default=.)")), ToolInput(tag="in_r_location", input_type=File(optional=True), prefix="--R-location", doc=InputDocumentation(doc="Triggers the R plotter subsystem, provide the\npath to the R command")), ToolInput(tag="in_sorensen", input_type=Boolean(optional=True), prefix="--sorensen", doc=InputDocumentation(doc="Compute sorensen abundance stats")), ToolInput(tag="in_otu_table", input_type=Boolean(optional=True), prefix="--otu-table", doc=InputDocumentation(doc="input file is an otu table, not rdp cluster")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="-u,--upper-cutoff <arg>   Highest cutoff in the cluster file to compute"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abundancestats_V0_1_0().translate("wdl", allow_empty_container=True)

