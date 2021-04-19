from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, Directory

Zpca_Counts_V0_1_0 = CommandToolBuilder(tool="zpca_counts", base_command=["zpca-counts"], inputs=[ToolInput(tag="in_counts", input_type=File(optional=True), prefix="--counts", doc=InputDocumentation(doc="Counts table (tsv). The first column should contain the gene/transcript id. The other columns should contain the counts for each sample.")), ToolInput(tag="in_lengths", input_type=File(optional=True), prefix="--lengths", doc=InputDocumentation(doc="Table of feature lengths (tsv).\nThe file can have two types of formats.\nFirst option: The first column should contain the gene/transcript id.\nThe second column should contain the corresponding lengths\nSecond option: The first column should contain the gene/transcript id.\nThe rest of the columns should contain the gene/transcript lengths for each of the samples\nNote that the sample names should be the same the sample names of the counts.")), ToolInput(tag="in_pseudo_count", input_type=Int(optional=True), prefix="--pseudocount", doc=InputDocumentation(doc="Pseudocount to add in the count table. Default: 1")), ToolInput(tag="in_filter_not_expressed", input_type=Boolean(optional=True), prefix="--filter-not-expressed", doc=InputDocumentation(doc="Filter not expressed genes/transcripts (0 counts for all samples).")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose"))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/zpca:0.8.3.post1--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zpca_Counts_V0_1_0().translate("wdl")

