from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Est_Abundance_Py_V0_1_0 = CommandToolBuilder(tool="est_abundance.py", base_command=["est_abundance.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input kraken report file.")), ToolInput(tag="in_km_er_distr", input_type=File(optional=True), prefix="--kmer_distr", doc=InputDocumentation(doc="Kmer distribution file.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output modified kraken report file with abundance\nestimates")), ToolInput(tag="in_level", input_type=String(optional=True), prefix="--level", doc=InputDocumentation(doc="Level to push all reads to [default: S].")), ToolInput(tag="in_out_report", input_type=File(optional=True), prefix="--out-report", doc=InputDocumentation(doc="Name of new kraken report [default: same as input\nreport with _bracken added to filename]")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Threshold for the minimum number of reads kraken must\nassign to a classification for that classification to\nbe considered in the final abundance estimation.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output modified kraken report file with abundance\nestimates"))], container="quay.io/biocontainers/bracken:2.6.1--py38hed8969a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Est_Abundance_Py_V0_1_0().translate("wdl")

