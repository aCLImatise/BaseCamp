from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, String, Boolean

Stoch_Gendimerrates_V0_1_0 = CommandToolBuilder(tool="stoch_genDimerRates", base_command=["stoch_genDimerRates"], inputs=[ToolInput(tag="in_mfe_sequence_used", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc=":  MFE of the sequence. Used to prevent numerical problems\nwhen computing the partition functions [0]")), ToolInput(tag="in_folding_temperature_celsius", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc=":  Folding temperature in deg Celsius [37]")), ToolInput(tag="in_bonus_energy_binding", input_type=Float(optional=True), prefix="-B", doc=InputDocumentation(doc=":  Bonus energy for binding the ligand (>=0, in kcal/mol) [9.59]")), ToolInput(tag="in_exploration_threshold_unconstrained", input_type=String(optional=True), prefix="-E", doc=InputDocumentation(doc=":  Exploration threshold in unconstrained landscape. Used to skip\nhashing of constrained structures below threshold [infinity]")), ToolInput(tag="in__be_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=":     Be verbose")), ToolInput(tag="in_params", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_monomer_dots_b_map", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_dimer_dots_b_map", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stoch_Gendimerrates_V0_1_0().translate("wdl", allow_empty_container=True)

