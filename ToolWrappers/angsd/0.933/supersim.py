from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, Float

Supersim_V0_1_0 = CommandToolBuilder(tool="supersim", base_command=["supersim"], inputs=[ToolInput(tag="in_out_files", input_type=String(optional=True), prefix="-outfiles", doc=InputDocumentation(doc="PREFIX.seq PREFIX.glf PREFIX.frq PREFIX.arg")), ToolInput(tag="in_n_pop", input_type=Boolean(optional=True), prefix="-npop", doc=InputDocumentation(doc="Number of populations. This MUST be set before -nind [1]")), ToolInput(tag="in_n_ind", input_type=Boolean(optional=True), prefix="-nind", doc=InputDocumentation(doc="Number of diploid individuals for each population [10]")), ToolInput(tag="in_n_sites", input_type=Int(optional=True), prefix="-nsites", doc=InputDocumentation(doc="of sites [500000]")), ToolInput(tag="in_er_rate", input_type=Float(optional=True), prefix="-errate", doc=InputDocumentation(doc="sequencing error rate [0.0075]")), ToolInput(tag="in_depth", input_type=Boolean(optional=True), prefix="-depth", doc=InputDocumentation(doc="Mean sequencing depth [5]")), ToolInput(tag="in_p_var", input_type=Boolean(optional=True), prefix="-pvar", doc=InputDocumentation(doc="Probability that a site is variable in the population [0.015]")), ToolInput(tag="in_m_freq", input_type=Boolean(optional=True), prefix="-mfreq", doc=InputDocumentation(doc="Minimum population frequency [0.0001]")), ToolInput(tag="in_inbreeding_coefficient_population", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="inbreeding coefficient for each population [0]")), ToolInput(tag="in_model", input_type=Boolean(optional=True), prefix="-model", doc=InputDocumentation(doc="0=fixed errate 1=variable errate [1]")), ToolInput(tag="in_simpler_and", input_type=Boolean(optional=True), prefix="-simpleRand", doc=InputDocumentation(doc="boolean [1]")), ToolInput(tag="in_base_freq", input_type=Boolean(optional=True), prefix="-base_freq", doc=InputDocumentation(doc="Background allele frequencies for A,C,G,T [0.25 0.25 0.25 0.25]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Supersim_V0_1_0().translate("wdl", allow_empty_container=True)

