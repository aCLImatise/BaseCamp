from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Fpkm_Uq_Py_V0_1_0 = CommandToolBuilder(tool="FPKM_UQ.py", base_command=["FPKM-UQ.py"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Alignment file in BAM format. BAM file shoul be sorted\nand indexed. Ideally, the BAM file should generaet\nfrom the TCGA RNA-seq analysis workflow described here\nhttps://docs.gdc.cancer.gov/Data/Bioinformatics_Pipeli\nnes/Expression_mRNA_Pipeline/.")), ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Gene model in GTF format.")), ToolInput(tag="in_info", input_type=File(optional=True), prefix="--info", doc=InputDocumentation(doc="Gene model information file.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The prefix of the output file.")), ToolInput(tag="in_log_two", input_type=Boolean(optional=True), prefix="--log2", doc=InputDocumentation(doc="Convert FPKM and FPKM-UQ values into log2 (x+1) scale.\nA pseudo count 1 will be added to each\ngene/transcript.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The prefix of the output file."))], container="quay.io/biocontainers/rseqc:4.0.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fpkm_Uq_Py_V0_1_0().translate("wdl")

