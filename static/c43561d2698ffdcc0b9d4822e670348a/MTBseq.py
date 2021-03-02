from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mtbseq_V0_1_0 = CommandToolBuilder(tool="MTBseq", base_command=["MTBseq"], inputs=[ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="Check the dependencies of MTBseq")), ToolInput(tag="in_step", input_type=Boolean(optional=True), prefix="--step", doc=InputDocumentation(doc="<ESSENTIAL> This is an essential option! Choose your pipeline step as a parameter!\nTBfull      Full workflow\nTBbwa       Read mapping\nTBrefine    Refinement of mapping(s)\nTBpile      Creation of mpileup file(s)\nTBlist      Creation of position list(s)\nTBvariants  Calling variants\nTBstats     Statisitcs of mapping(s) and variant calling(s)\nTBstrains   Calling lineage from sample(s)\nTBjoin      Joint variant analysis from defined samples\nTBamend     Amending joint variant table(s)\nTBgroups    Detecting groups of samples"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mtbseq_V0_1_0().translate("wdl", allow_empty_container=True)

