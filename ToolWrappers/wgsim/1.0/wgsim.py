from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, String

Wgsim_V0_1_0 = CommandToolBuilder(tool="wgsim", base_command=["wgsim"], inputs=[ToolInput(tag="in_base_error_rate", input_type=Float(optional=True), prefix="-e", doc=InputDocumentation(doc="base error rate [0.000]")), ToolInput(tag="in_outer_distance_two", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="outer distance between the two ends [500]")), ToolInput(tag="in_standard_deviation", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="standard deviation [50]")), ToolInput(tag="in_number_read_pairs", input_type=Int(optional=True), prefix="-N", doc=InputDocumentation(doc="number of read pairs [1000000]")), ToolInput(tag="in_length_first_read", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="length of the first read [70]")), ToolInput(tag="in_length_second_read", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="length of the second read [70]")), ToolInput(tag="in_rate_of_mutations", input_type=Float(optional=True), prefix="-r", doc=InputDocumentation(doc="rate of mutations [0.0010]")), ToolInput(tag="in_fraction_of_indels", input_type=Float(optional=True), prefix="-R", doc=InputDocumentation(doc="fraction of indels [0.15]")), ToolInput(tag="in_probability_indel_extended", input_type=Float(optional=True), prefix="-X", doc=InputDocumentation(doc="probability an indel is extended [0.30]")), ToolInput(tag="in_seed_random_generator", input_type=Int(optional=True), prefix="-S", doc=InputDocumentation(doc="seed for random generator [-1]")), ToolInput(tag="in_disgard_fraction_ambiguous", input_type=Float(optional=True), prefix="-A", doc=InputDocumentation(doc="disgard if the fraction of ambiguous bases higher than FLOAT [0.05]")), ToolInput(tag="in_in_dot_ref_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_read_one_dot_fq", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_read_two_dot_fq", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wgsim_V0_1_0().translate("wdl", allow_empty_container=True)

