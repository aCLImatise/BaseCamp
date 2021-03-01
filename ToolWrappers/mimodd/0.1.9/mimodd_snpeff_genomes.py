from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Mimodd_Snpeff_Genomes_V0_1_0 = CommandToolBuilder(tool="mimodd_snpeff_genomes", base_command=["mimodd", "snpeff-genomes"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="location of the SnpEff installation directory. Will\noverride MiModD config settings if provided.")), ToolInput(tag="in_ofile", input_type=File(optional=True), prefix="--ofile", doc=InputDocumentation(doc="redirect the output to the specified file (default:\nstdout)\n")), ToolInput(tag="in_snp_eff_genomes", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_ofile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_ofile", type_hint=File()), doc=OutputDocumentation(doc="redirect the output to the specified file (default:\nstdout)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mimodd_Snpeff_Genomes_V0_1_0().translate("wdl", allow_empty_container=True)

