from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, File

Ice_V0_1_0 = CommandToolBuilder(tool="ice", base_command=["ice"], inputs=[ToolInput(tag="in_filter_low_counts_perc", input_type=String(optional=True), prefix="--filter_low_counts_perc", doc=InputDocumentation(doc="Percentage of reads to filter out")), ToolInput(tag="in_filter_high_counts_perc", input_type=String(optional=True), prefix="--filter_high_counts_perc", doc=InputDocumentation(doc="Percentage of reads to filter out")), ToolInput(tag="in_remove_all_zeros_loci", input_type=Boolean(optional=True), prefix="--remove-all-zeros-loci", doc=InputDocumentation(doc="If provided, all non-interacting loci will be removed\nprior to the filtering strategy chosen.")), ToolInput(tag="in_max_iter", input_type=Int(optional=True), prefix="--max_iter", doc=InputDocumentation(doc="Maximum number of iterations")), ToolInput(tag="in_eps", input_type=String(optional=True), prefix="--eps", doc=InputDocumentation(doc="Precision")), ToolInput(tag="in_output_bias", input_type=String(optional=True), prefix="--output-bias", doc=InputDocumentation(doc="Output the bias vector")), ToolInput(tag="in_verbose", input_type=File(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Indicates whether the matrix file is 0 or 1-based")), ToolInput(tag="in_results_filename", input_type=File(optional=True), prefix="--results_filename", doc=InputDocumentation(doc="")), ToolInput(tag="in_normalization", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/iced:0.5.8--py38h1773678_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ice_V0_1_0().translate("wdl")

