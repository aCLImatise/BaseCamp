from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Eigenstrat_Snp_Coverage_V0_1_0 = CommandToolBuilder(tool="eigenstrat_snp_coverage", base_command=["eigenstrat_snp_coverage"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--Input", doc=InputDocumentation(doc="The desired input file prefix. Input files are assumed\nto be <INPUT PREFIX>.geno, <INPUT PREFIX>.snp and\n<INPUT PREFIX>.ind .")), ToolInput(tag="in_suffix", input_type=File(optional=True), prefix="--Suffix", doc=InputDocumentation(doc="The suffix (if any) that follows .geno/.snp/.ind in\nthe input files. For example, specifying '-s .txt'\nwill treat <INPUT PREFIX>.{geno,snp,ind}.txt as the\ndesired input files.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--Output", doc=InputDocumentation(doc="The filepath where the output table should be saved.\nOmit to print to stdout.")), ToolInput(tag="in_json", input_type=File(optional=True), prefix="--json", doc=InputDocumentation(doc="Create additional json formatted output file named\n<JSON OUTPUT FILEPATH> ."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The filepath where the output table should be saved.\nOmit to print to stdout.")), ToolOutput(tag="out_json", output_type=File(optional=True), selector=InputSelector(input_to_select="in_json", type_hint=File()), doc=OutputDocumentation(doc="Create additional json formatted output file named\n<JSON OUTPUT FILEPATH> ."))], container="quay.io/biocontainers/eigenstratdatabasetools:1.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eigenstrat_Snp_Coverage_V0_1_0().translate("wdl")

