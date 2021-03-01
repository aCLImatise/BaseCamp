from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Riboraptor_Export_Bed_Fasta_V0_1_0 = CommandToolBuilder(tool="riboraptor_export_bed_fasta", base_command=["riboraptor", "export-bed-fasta"], inputs=[ToolInput(tag="in_region_bed", input_type=File(optional=True), prefix="--region_bed", doc=InputDocumentation(doc="Path to bed file  [required]")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Path to fasta file  [required]")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Path to write output")), ToolInput(tag="in_chrom_sizes", input_type=File(optional=True), prefix="--chrom_sizes", doc=InputDocumentation(doc="Path to chrom.sizes  [required]")), ToolInput(tag="in_offset_five_p", input_type=Int(optional=True), prefix="--offset_5p", doc=InputDocumentation(doc="Number of upstream bases to count(5')")), ToolInput(tag="in_offset_three_p", input_type=Int(optional=True), prefix="--offset_3p", doc=InputDocumentation(doc="Number of downstream bases to count(3')")), ToolInput(tag="in_ignore_tx_version", input_type=Boolean(optional=True), prefix="--ignore_tx_version", doc=InputDocumentation(doc="Ignore version (.xyz) in gene names"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Path to write output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Riboraptor_Export_Bed_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

