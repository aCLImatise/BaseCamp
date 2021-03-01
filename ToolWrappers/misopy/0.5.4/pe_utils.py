from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Directory

Pe_Utils_V0_1_0 = CommandToolBuilder(tool="pe_utils", base_command=["pe_utils"], inputs=[ToolInput(tag="in_compute_insert_len", input_type=Int(optional=True), prefix="--compute-insert-len", doc=InputDocumentation(doc="Compute insert length for given sample. Takes as input\n(1) a comma-separated list of sorted, indexed BAM\nfiles with headers (or a single BAM filename), (2) a\nGFF file with constitutive exons. Outputs the insert\nlength distribution into the output directory.")), ToolInput(tag="in_no_bam_filter", input_type=Boolean(optional=True), prefix="--no-bam-filter", doc=InputDocumentation(doc="If provided, this ignores the BAM file flags that\nstate whether the read was paired or not, and instead\nuses only the read IDs to pair up the mates. Use this\nif your paired-end BAM was the result of a samtools\nmerge operation.")), ToolInput(tag="in_min_exon_size", input_type=Int(optional=True), prefix="--min-exon-size", doc=InputDocumentation(doc="Minimum size of constitutive exon (in nucleotides)\nthat should be used in the computation. Default is 500\nbp.")), ToolInput(tag="in_sd_max", input_type=Int(optional=True), prefix="--sd-max", doc=InputDocumentation(doc="Number of standard deviations used to define outliers.\nBy default, set to 2, meaning that any points at least\n2*sigma away from the mean of the insert length\ndistribution will be discarded.")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Output directory.\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pe_Utils_V0_1_0().translate("wdl", allow_empty_container=True)

