from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Convert_Regions_V0_1_0 = CommandToolBuilder(tool="convert_regions", base_command=["convert-regions"], inputs=[ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="Output format (bed (BED), bigwig (BigWig), bw\n(BigWig), gff (GFF)")), ToolInput(tag="in_chromosome_sizes", input_type=File(optional=True), prefix="--chromosome-sizes", doc=InputDocumentation(doc="Genome identifier (mm10, hg38, ...) or chrom.sizes\nfile")), ToolInput(tag="in_subset", input_type=String(optional=True), prefix="--subset", doc=InputDocumentation(doc="Regions subset identifier of the form\n<chr>[:<start>-<end>]")), ToolInput(tag="in_force_overwrite", input_type=File(optional=True), prefix="--force-overwrite", doc=InputDocumentation(doc="Force overwriting of existing output file")), ToolInput(tag="in_work_in_tmp", input_type=Boolean(optional=True), prefix="--work-in-tmp", doc=InputDocumentation(doc="Work in temporary directory")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input file")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Output file"))], outputs=[ToolOutput(tag="out_force_overwrite", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite", type_hint=File()), doc=OutputDocumentation(doc="Force overwriting of existing output file"))], container="quay.io/biocontainers/genomic_regions:0.0.10--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Regions_V0_1_0().translate("wdl")

