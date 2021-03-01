from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Remove_Callers_From_Somaticseq_Tsv_Py_V0_1_0 = CommandToolBuilder(tool="remove_callers_from_somaticseq_tsv.py", base_command=["remove_callers_from_somaticseq_tsv.py"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="input file (default: None)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="input file (default: None)")), ToolInput(tag="in_subtract", input_type=String(optional=True), prefix="-subtract", doc=InputDocumentation(doc="[{if_MuTect,if_VarScan2,if_JointSNVMix2,if_SomaticSniper,if_VarDict,MuSE_Tier,if_LoFreq,if_Scalpel,if_Strelka,if_TNscope,if_Platypus} ...], --subtract-callers {if_MuTect,if_VarScan2,if_JointSNVMix2,if_SomaticSniper,if_VarDict,MuSE_Tier,if_LoFreq,if_Scalpel,if_Strelka,if_TNscope,if_Platypus} [{if_MuTect,if_VarScan2,if_JointSNVMix2,if_SomaticSniper,if_VarDict,MuSE_Tier,if_LoFreq,if_Scalpel,if_Strelka,if_TNscope,if_Platypus} ...]\ncolumns to make nan (default: None)\n"))], outputs=[], container="quay.io/biocontainers/somaticseq:3.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Callers_From_Somaticseq_Tsv_Py_V0_1_0().translate("wdl")

