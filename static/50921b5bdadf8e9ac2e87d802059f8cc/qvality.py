from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Qvality_V0_1_0 = CommandToolBuilder(tool="qvality", base_command=["qvality"], inputs=[ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set verbosity of output: 0=no processing\ninfo, 5=all, default is 2")), ToolInput(tag="in_epsilon_step", input_type=Int(optional=True), prefix="--epsilon-step", doc=InputDocumentation(doc="The relative step size used as treshhold\nbefore cross validation error is calculated")), ToolInput(tag="in_number_of_bins", input_type=Int(optional=True), prefix="--number-of-bins", doc=InputDocumentation(doc="The number of spline knots used when\ninterpolating spline function. Default is\n500.")), ToolInput(tag="in_epsilon_cross_validation", input_type=Int(optional=True), prefix="--epsilon-cross-validation", doc=InputDocumentation(doc="The relative crossvalidation step size used\nas treshhold before ending the iterations")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="Indicating that the scoring mechanism is\nreversed, i.e., that low scores are better\nthan higher scores")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Output results to file instead of stdout")), ToolInput(tag="in_generalized", input_type=Boolean(optional=True), prefix="--generalized", doc=InputDocumentation(doc="Generalized target decoy competition,\nsituations where PSMs known to more\nfrequently be incorrect are mixed in with\nthe correct PSMs")), ToolInput(tag="in_tdc_input", input_type=Boolean(optional=True), prefix="--tdc-input", doc=InputDocumentation(doc="Turns off the pi0 correction for search\nresults from a concatenated database.")), ToolInput(tag="in_include_negative", input_type=Boolean(optional=True), prefix="--include-negative", doc=InputDocumentation(doc="Include negative hits (decoy) probabilities\nin the results\n")), ToolInput(tag="in_target_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output results to file instead of stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qvality_V0_1_0().translate("wdl", allow_empty_container=True)

