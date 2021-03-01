from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, String

Phyluce_Genetrees_Generate_Multilocus_Bootstrap_Count_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_generate_multilocus_bootstrap_count", base_command=["phyluce_genetrees_generate_multilocus_bootstrap_count"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The input directory containing alignments in phylip\nformat")), ToolInput(tag="in_bootstrap_replicates", input_type=File(optional=True), prefix="--bootstrap_replicates", doc=InputDocumentation(doc="The file that will hold bootstrap replicates sampling")), ToolInput(tag="in_directory", input_type=Directory(optional=True), prefix="--directory", doc=InputDocumentation(doc="Optional path to directory containing alignments.\nDefaults to alignment directory if not provided.")), ToolInput(tag="in_bootstrap_counts", input_type=File(optional=True), prefix="--bootstrap_counts", doc=InputDocumentation(doc="The CSV file that will hold bootstrap replicate counts\nfor each locus")), ToolInput(tag="in_boot_reps", input_type=Int(optional=True), prefix="--bootreps", doc=InputDocumentation(doc="The number of bootstrap replicates to run")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Generate_Multilocus_Bootstrap_Count_V0_1_0().translate("wdl", allow_empty_container=True)

