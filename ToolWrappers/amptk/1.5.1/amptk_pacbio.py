from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Amptk_Pacbio_V0_1_0 = CommandToolBuilder(tool="amptk_pacbio", base_command=["amptk", "pacbio"], inputs=[ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc="Directory/Folder contained 1 BAM file per sample (Required)")), ToolInput(tag="in_barcodes", input_type=Boolean(optional=True), prefix="--barcodes", doc=InputDocumentation(doc="FASTA file of Barcodes used to demultiplex with lima (Required)")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="Output base name. (Required)")), ToolInput(tag="in_fwd_primer", input_type=Boolean(optional=True), prefix="--fwd_primer", doc=InputDocumentation(doc="Forward primer sequence. Default: ITS1-F")), ToolInput(tag="in_rev_primer", input_type=Boolean(optional=True), prefix="--rev_primer", doc=InputDocumentation(doc="Reverse primer sequence. Default: LR3")), ToolInput(tag="in_int_primer", input_type=Boolean(optional=True), prefix="--int_primer", doc=InputDocumentation(doc="Internal/nested primer for orientation.")), ToolInput(tag="in_min_len", input_type=Boolean(optional=True), prefix="--min_len", doc=InputDocumentation(doc="Minimum length read to keep. Default: 800")), ToolInput(tag="in_primer_mismatch", input_type=Boolean(optional=True), prefix="--primer_mismatch", doc=InputDocumentation(doc="Number of mismatches in primers to allow. Default: 3")), ToolInput(tag="in_cpus", input_type=Boolean(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of CPUs to use. Default: all")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/amptk:1.5.1--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Pacbio_V0_1_0().translate("wdl")

