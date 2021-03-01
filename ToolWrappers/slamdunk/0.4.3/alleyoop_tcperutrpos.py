from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, String

Alleyoop_Tcperutrpos_V0_1_0 = CommandToolBuilder(tool="alleyoop_tcperutrpos", base_command=["alleyoop", "tcperutrpos"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference fasta file")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="BED file")), ToolInput(tag="in_snp_directory", input_type=Directory(optional=True), prefix="--snp-directory", doc=InputDocumentation(doc="Directory containing SNP files.")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="Skip SNP step and provide custom variant file.")), ToolInput(tag="in_max_read_length", input_type=Int(optional=True), prefix="--max-read-length", doc=InputDocumentation(doc="Max read length in BAM file")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--outputDir", doc=InputDocumentation(doc="Output directory for mapped BAM files.")), ToolInput(tag="in_min_base_quality", input_type=Int(optional=True), prefix="--min-basequality", doc=InputDocumentation(doc="Minimal base quality for SNPs (default: 27)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Thread number (default: 1)\n")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Bam file(s)"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for mapped BAM files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alleyoop_Tcperutrpos_V0_1_0().translate("wdl", allow_empty_container=True)

