from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Clip_Out_Umi_Cellbc_Py_V0_1_0 = CommandToolBuilder(tool="clip_out_UMI_cellBC.py", base_command=["clip_out_UMI_cellBC.py"], inputs=[ToolInput(tag="in_umi_len", input_type=Int(optional=True), prefix="--umi_len", doc=InputDocumentation(doc="Length of UMI")), ToolInput(tag="in_bc_len", input_type=Int(optional=True), prefix="--bc_len", doc=InputDocumentation(doc="Length of cell barcode")), ToolInput(tag="in_tso_len", input_type=Int(optional=True), prefix="--tso_len", doc=InputDocumentation(doc="Length of TSO (for G5-10X only)")), ToolInput(tag="in_umi_type", input_type=String(optional=True), prefix="--umi_type", doc=InputDocumentation(doc="Location of the UMI")), ToolInput(tag="in_g_five_clip_seq", input_type=Int(optional=True), prefix="--g5_clip_seq", doc=InputDocumentation(doc="Sequence before UMI for G5-clip (for G5-clip only)")), ToolInput(tag="in_bc_rank_file", input_type=File(optional=True), prefix="--bc_rank_file", doc=InputDocumentation(doc="(Optional) cell barcode rank file from short read data\n")), ToolInput(tag="in_bam_filename", input_type=String(), position=0, doc=InputDocumentation(doc="CCS BAM with cDNA primer removed (post LIMA)")), ToolInput(tag="in_output_prefix", input_type=String(), position=1, doc=InputDocumentation(doc="Output prefix"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clip_Out_Umi_Cellbc_Py_V0_1_0().translate("wdl")

