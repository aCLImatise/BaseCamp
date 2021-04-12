from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Downsample_Traingenes_Pl_V0_1_0 = CommandToolBuilder(tool="downsample_traingenes.pl", base_command=["downsample_traingenes.pl"], inputs=[ToolInput(tag="in_lambda", input_type=Int(optional=True), prefix="--lambda", doc=InputDocumentation(doc="Parameter lambda of Poisson distribution\n(default value is 0)")), ToolInput(tag="in_intron_num_lst", input_type=File(optional=True), prefix="--intron_num_lst", doc=InputDocumentation(doc="File with intron numbers per gene (selected)")), ToolInput(tag="in_train_genes_dot_gtf", input_type=String(), position=0, doc=InputDocumentation(doc="training gene structure file in gtf format (e.g. from\nGeneMark-EX).")), ToolInput(tag="in_out_dot_gtf", input_type=String(), position=1, doc=InputDocumentation(doc="output file with downsampled training gene structures"))], outputs=[], container="quay.io/biocontainers/braker2:2.1.6--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Downsample_Traingenes_Pl_V0_1_0().translate("wdl")

