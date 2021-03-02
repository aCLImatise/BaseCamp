from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float

Ctseq_Call_Methylation_V0_1_0 = CommandToolBuilder(tool="ctseq_call_methylation", base_command=["ctseq", "call_methylation"], inputs=[ToolInput(tag="in_ref_dir", input_type=File(optional=True), prefix="--refDir", doc=InputDocumentation(doc="Full path to directory where you have already built\nyour methylation reference files. If no '--refDir' is\nspecified, ctseq will look in your current directory.")), ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="Full path to directory where your '*allMolecules.txt'\nfiles are located. If no '--dir' is specified, ctseq\nwill look in your current directory.")), ToolInput(tag="in_name_run", input_type=Int(optional=True), prefix="--nameRun", doc=InputDocumentation(doc="number of reads needed to be counted as a unique\nmolecule (required)")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="number of processes (default=1)")), ToolInput(tag="in_cisc_g", input_type=Float(optional=True), prefix="--cisCG", doc=InputDocumentation(doc="cis-CG threshold to determine if a molecule is\nmethylated (default=0.75)")), ToolInput(tag="in_molecule_threshold", input_type=Int(optional=True), prefix="--moleculeThreshold", doc=InputDocumentation(doc="number of reads needed to be counted as a unique\nmolecule (default=5)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ctseq_Call_Methylation_V0_1_0().translate("wdl", allow_empty_container=True)

