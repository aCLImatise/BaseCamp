from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Plasmidhawk_Predict_V0_1_0 = CommandToolBuilder(tool="plasmidhawk_predict", base_command=["plasmidhawk", "predict"], inputs=[ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output lab-of-origin prediction")), ToolInput(tag="in_skip", input_type=Boolean(optional=True), prefix="--skip", doc=InputDocumentation(doc="Use nucmer results already present in work-dir instead\nof rerunning")), ToolInput(tag="in_work_dir", input_type=String(optional=True), prefix="--work-dir", doc=InputDocumentation(doc="output lab-of-origin prediction")), ToolInput(tag="in_thread", input_type=Int(optional=True), prefix="--thread", doc=InputDocumentation(doc="Number of threads, default 20")), ToolInput(tag="in_identity", input_type=Int(optional=True), prefix="--identity", doc=InputDocumentation(doc="Minimum alignment identity [0,100], default 0")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print verbose output")), ToolInput(tag="in_labs", input_type=String(), position=0, doc=InputDocumentation(doc="input-pangenome-fasta")), ToolInput(tag="in_input_pan_genome_annotated_meta", input_type=String(), position=0, doc=InputDocumentation(doc="Lab ownership metadata file")), ToolInput(tag="in_input_files", input_type=String(), position=1, doc=InputDocumentation(doc="a list of input fasta file names. If there is one file\nand it ends with a non-fasta suffix it is assumed that\nthis file contains a list of input files separated by\na newline"))], outputs=[], container="quay.io/biocontainers/plasmidhawk:1.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plasmidhawk_Predict_V0_1_0().translate("wdl")

