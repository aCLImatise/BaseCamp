from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Ctseq_Add_Umis_V0_1_0 = CommandToolBuilder(tool="ctseq_add_umis", base_command=["ctseq", "add_umis"], inputs=[ToolInput(tag="in_umi_type", input_type=String(optional=True), prefix="--umiType", doc=InputDocumentation(doc="Choose 'separate' if the UMIs for the reads are\ncontained in a separate fastq file where the line\nafter the read name is the UMI. Choose 'inline' if the\nUMIs are already included in the forward/reverse read\nfastq files in the following format: '@M01806:488:0000\n00000-J36GT:1:1101:15963:1363:GTAGGTAAAGTG\n1:N:0:CGAGTAAT' where 'GTAGGTAAAGTG' is the UMI")), ToolInput(tag="in_umi_length", input_type=Int(optional=True), prefix="--umiLength", doc=InputDocumentation(doc="Length of UMI sequence, e.g. 12 (required)")), ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="Path to directory containing fastq files;\nforward/reverse reads and umi files. If no '--dir' is\nspecified, ctseq will look in your current directory.")), ToolInput(tag="in_forward_ext", input_type=String(optional=True), prefix="--forwardExt", doc=InputDocumentation(doc="Unique extension of fastq files containing FORWARD\nreads. Make sure to include '.gz' if your files are\ncompressed (required)")), ToolInput(tag="in_reverse_ext", input_type=String(optional=True), prefix="--reverseExt", doc=InputDocumentation(doc="Unique extension of fastq files containing REVERSE\nreads. Make sure to include '.gz' if your files are\ncompressed (required)")), ToolInput(tag="in_umi_ext", input_type=File(optional=True), prefix="--umiExt", doc=InputDocumentation(doc="Unique extension of fastq files containing the UMIs\n(This flag is REQUIRED if UMIs are contained in\nseparate fastq file). Make sure to include '.gz' if\nyour files are compressed.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ctseq_Add_Umis_V0_1_0().translate("wdl", allow_empty_container=True)

