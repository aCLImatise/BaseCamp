from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Anvi_Gen_Variability_Network_V0_1_0 = CommandToolBuilder(tool="anvi_gen_variability_network", base_command=["anvi-gen-variability-network"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="The anvi'o variability profile. Please see `anvi-gen-\nvariability-profile` to generate one. (default: None)")), ToolInput(tag="in_max_num_unique_positions", input_type=Int(optional=True), prefix="--max-num-unique-positions", doc=InputDocumentation(doc="Maximum number of unique positions to be used in the\nnetwork. This may be one way to avoid extremely large\nnetwork descriptions that would defeat the purpose of\na quick visualization. If there are more unique\npositions in the variability profile, the program will\nrandomly select a subset of them to match the `max-\nnum-unique-positions`. The default is 0, which means\nall positions should be reported. Remember that the\nnumber of nodes in the network will also depend on the\nnumber of samples described in the variability\nprofile.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results. (default: network.gexf)"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results. (default: network.gexf)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Gen_Variability_Network_V0_1_0().translate("wdl")

