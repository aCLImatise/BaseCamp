from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Nucleosome_Prediction_Pl_V0_1_0 = CommandToolBuilder(tool="nucleosome_prediction.pl", base_command=["nucleosome_prediction.pl"], inputs=[ToolInput(tag="in_raw_binding", input_type=Boolean(optional=True), prefix="-raw_binding", doc=InputDocumentation(doc=": Output the raw nucleosome binding log-ratio per basepair instead of the default average occupancy probabilities.")), ToolInput(tag="in__title", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc=":    Title.")), ToolInput(tag="in_sequence_file_fasta", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc=":    Sequence file (fasta format).")), ToolInput(tag="in_nucleosomes_concentration_default", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc=":    Nucleosomes concentration (default: 0.1).")), ToolInput(tag="in_temp", input_type=Int(optional=True), prefix="-temp", doc=InputDocumentation(doc=": (Inverse) Temperature scaling (default: 1).")), ToolInput(tag="in_prefix_use_default", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc=":    Prefix of output files to use (default: the process id).")), ToolInput(tag="in_tab", input_type=File(optional=True), prefix="-tab", doc=InputDocumentation(doc=":        Produce a tab delimited output file (otherwise, print output to STDOUT).")), ToolInput(tag="in_gxp", input_type=File(optional=True), prefix="-gxp", doc=InputDocumentation(doc=":        Produce a gxp (Genomica project file) output file."))], outputs=[ToolOutput(tag="out_tab", output_type=File(optional=True), selector=InputSelector(input_to_select="in_tab", type_hint=File()), doc=OutputDocumentation(doc=":        Produce a tab delimited output file (otherwise, print output to STDOUT).")), ToolOutput(tag="out_gxp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_gxp", type_hint=File()), doc=OutputDocumentation(doc=":        Produce a gxp (Genomica project file) output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nucleosome_Prediction_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

