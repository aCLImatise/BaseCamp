from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float

Jcast_V0_1_0 = CommandToolBuilder(tool="jcast", base_command=["jcast"], inputs=[ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="name of the output files [default: psq_out]")), ToolInput(tag="in_read", input_type=Int(optional=True), prefix="--read", doc=InputDocumentation(doc="minimum read counts to consider [default: 1]")), ToolInput(tag="in_canonical", input_type=String(optional=True), prefix="--canonical", doc=InputDocumentation(doc="write out canonical protein sequence even if\ntranscriptslices are untranslatable [default: True]")), ToolInput(tag="in_p_value", input_type=Float(optional=True), prefix="--pvalue", doc=InputDocumentation(doc="discard junctions with rMATS pvalue below this\nthreshold [default: 0.01]\n")), ToolInput(tag="in_r_mats_folder", input_type=String(), position=0, doc=InputDocumentation(doc="path to folder storing rMATS output")), ToolInput(tag="in_gtf_file", input_type=String(), position=1, doc=InputDocumentation(doc="path to Ensembl gtf file")), ToolInput(tag="in_genome", input_type=String(), position=2, doc=InputDocumentation(doc="path to genome file"))], outputs=[], container="quay.io/biocontainers/jcast:0.3.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jcast_V0_1_0().translate("wdl")

