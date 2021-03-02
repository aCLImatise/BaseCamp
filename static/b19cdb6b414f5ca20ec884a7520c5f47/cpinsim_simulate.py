from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, String, File

Cpinsim_Simulate_V0_1_0 = CommandToolBuilder(tool="cpinsim_simulate", base_command=["cpinsim", "simulate"], inputs=[ToolInput(tag="in_concentrations", input_type=Int(optional=True), prefix="--concentrations", doc=InputDocumentation(doc="PATH/TO/CONCENTRATIONS, -c MAX-PROTEIN-INSTANCES PATH/TO/CONCENTRATIONS\nMaximum number of protein instances and path to a csv-\nfile containing a concentration for each protein.")), ToolInput(tag="in_number_of_copies", input_type=Int(optional=True), prefix="--number-of-copies", doc=InputDocumentation(doc="Number of copies for each protein type.")), ToolInput(tag="in_association_probability", input_type=Float(optional=True), prefix="--association-probability", doc=InputDocumentation(doc="The probability for a new association between two\nproteins (default: 0.005).")), ToolInput(tag="in_dissociation_probability", input_type=Float(optional=True), prefix="--dissociation-probability", doc=InputDocumentation(doc="The probability for a dissociation of a pairwise\ninteraction (default: 0.0125).")), ToolInput(tag="in_max_steps", input_type=Int(optional=True), prefix="--max-steps", doc=InputDocumentation(doc="Maximum number of simulation steps if convergence is\nnot reached until then (default: 1000).")), ToolInput(tag="in_perturbation", input_type=String(optional=True), prefix="--perturbation", doc=InputDocumentation(doc="FACTOR, -p PROTEIN FACTOR\nProtein that should be overexpressed or down regulated\nby factor FACTOR for perturbation analysis.")), ToolInput(tag="in_output_graph", input_type=File(optional=True), prefix="--output-graph", doc=InputDocumentation(doc="Pickle the complete graph at the end of simulation\n(after last dissociation step) and write it to the\ngiven path.")), ToolInput(tag="in_output_log", input_type=File(optional=True), prefix="--output-log", doc=InputDocumentation(doc="Write some log information of each simulation stept to\nthe given path. If not specified, std-out is used.\n"))], outputs=[ToolOutput(tag="out_output_log", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_log", type_hint=File()), doc=OutputDocumentation(doc="Write some log information of each simulation stept to\nthe given path. If not specified, std-out is used.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cpinsim_Simulate_V0_1_0().translate("wdl", allow_empty_container=True)

