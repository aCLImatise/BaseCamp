from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Primedlamp_Tm_Update_V0_1_0 = CommandToolBuilder(tool="PrimedLAMP_Tm_Update", base_command=["PrimedLAMP_Tm_Update"], inputs=[ToolInput(tag="in_run_id", input_type=String(optional=True), prefix="--RunID", doc=InputDocumentation(doc="Desired Run ID")), ToolInput(tag="in_path_prior_generated", input_type=File(optional=True), prefix="--PriorOligoSites", doc=InputDocumentation(doc="Path to Prior Generated Oligo Sites")), ToolInput(tag="in_monovalent_salt_conc", input_type=Int(optional=True), prefix="--MonovalentSaltConc", doc=InputDocumentation(doc="Millimolar Concentration (10^-3)")), ToolInput(tag="in_divalent_salt_conc", input_type=Int(optional=True), prefix="--DivalentSaltConc", doc=InputDocumentation(doc="Millimolar Concentration (10^-3)")), ToolInput(tag="in_dntp_conc", input_type=Int(optional=True), prefix="--dNTPConc", doc=InputDocumentation(doc="Millimolar Concentration (10^-3)")), ToolInput(tag="in_oligo_conc", input_type=Int(optional=True), prefix="--OligoConc", doc=InputDocumentation(doc="Micromolar Concentration (10^-6)")), ToolInput(tag="in_oligo_conc_pair", input_type=String(optional=True), prefix="--OligoConcPair", doc=InputDocumentation(doc="Leave as Default")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--Threads", doc=InputDocumentation(doc="Default Set To 1")), ToolInput(tag="in_var_8", input_type=String(), position=0, doc=InputDocumentation(doc="[--MonovalentSaltConc MONOVALENTSALTCONC]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Primedlamp_Tm_Update_V0_1_0().translate("wdl", allow_empty_container=True)

