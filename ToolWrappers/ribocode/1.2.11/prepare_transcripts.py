from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean

Prepare_Transcripts_V0_1_0 = CommandToolBuilder(tool="prepare_transcripts", base_command=["prepare_transcripts"], inputs=[ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Default, suitable for GENCODE and ENSEMBL GTF file,\nplease refer: https://en.wikipedia.org/wiki/GENCODE,\nor using GTFupdate command to update your GTF file.")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="The genome sequences file in fasta format.")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="annotation directory name.")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ribocode:1.2.11--pyh145b6a8_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prepare_Transcripts_V0_1_0().translate("wdl")

