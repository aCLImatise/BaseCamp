from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Genostats_V0_1_0 = CommandToolBuilder(tool="genoStats", base_command=["genoStats"], inputs=[ToolInput(tag="in_freq_sum", input_type=File(optional=True), prefix="--freqsum", doc=InputDocumentation(doc="a freqsum file to read as input. Use - to read from\nstdin (the default) (default: '-')")), ToolInput(tag="in_eigen_strat_geno", input_type=File(optional=True), prefix="--eigenstratGeno", doc=InputDocumentation(doc="Eigenstrat Geno File")), ToolInput(tag="in_eigen_strat_snp", input_type=File(optional=True), prefix="--eigenstratSnp", doc=InputDocumentation(doc="Eigenstrat Snp File")), ToolInput(tag="in_eigen_strat_ind", input_type=File(optional=True), prefix="--eigenstratInd", doc=InputDocumentation(doc="Eigenstrat Ind File\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genostats_V0_1_0().translate("wdl", allow_empty_container=True)

