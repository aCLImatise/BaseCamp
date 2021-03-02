from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Esl_Alipid_V0_1_0 = CommandToolBuilder(tool="esl_alipid", base_command=["esl-alipid"], inputs=[ToolInput(tag="in_in_format", input_type=File(optional=True), prefix="--informat", doc=InputDocumentation(doc=": specify the input MSA file is in format <s>")), ToolInput(tag="in_out_format", input_type=String(optional=True), prefix="--outformat", doc=InputDocumentation(doc=": write the output MSA in format <s>  [Clustal]")), ToolInput(tag="in_noheader", input_type=Boolean(optional=True), prefix="--noheader", doc=InputDocumentation(doc=": no header")), ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--dna", doc=InputDocumentation(doc=": use DNA alphabet")), ToolInput(tag="in_rna", input_type=Boolean(optional=True), prefix="--rna", doc=InputDocumentation(doc=": use RNA alphabet")), ToolInput(tag="in_amino", input_type=Boolean(optional=True), prefix="--amino", doc=InputDocumentation(doc=": use protein alphabet")), ToolInput(tag="in_msa_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/easel:0.47--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Alipid_V0_1_0().translate("wdl")

