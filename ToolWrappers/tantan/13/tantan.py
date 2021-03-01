from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Tantan_V0_1_0 = CommandToolBuilder(tool="tantan", base_command=["tantan"], inputs=[ToolInput(tag="in_interpret_sequences_proteins", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="interpret the sequences as proteins")), ToolInput(tag="in_letter_use_lowercase", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="letter to use for masking, instead of lowercase")), ToolInput(tag="in_preserve_uppercaselowercase_nonmasked", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="preserve uppercase/lowercase in non-masked regions")), ToolInput(tag="in_file_letter_selects", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="file for letter pair scores (+1/-1, but -p selects BLOSUM62)")), ToolInput(tag="in_probability_repeat_starting", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="probability of a repeat starting per position (0.005)")), ToolInput(tag="in_probability_repeat_ending", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="probability of a repeat ending per position (0.05)")), ToolInput(tag="in_maximum_tandem_repeat", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="maximum tandem repeat period to consider (100, but -p selects 50)")), ToolInput(tag="in_probability_decay_period", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="probability decay per period (0.9)")), ToolInput(tag="in_gap_existence_cost", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="gap existence cost (0)")), ToolInput(tag="in_gap_extension_cost", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="gap extension cost (infinite: no gaps)")), ToolInput(tag="in_minimum_repeat_probability", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="minimum repeat probability for masking (0.5)")), ToolInput(tag="in_output_type_masked", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="output type: 0=masked sequence, 1=repeat probabilities,\n2=repeat counts, 3=BED (0)")), ToolInput(tag="in_fast_a_sequence_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tantan_V0_1_0().translate("wdl", allow_empty_container=True)

