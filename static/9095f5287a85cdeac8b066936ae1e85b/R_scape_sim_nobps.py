from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, Directory, File

R_Scape_Sim_Nobps_V0_1_0 = CommandToolBuilder(tool="R_scape_sim_nobps", base_command=["R-scape-sim-nobps"], inputs=[ToolInput(tag="in__be_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": be verbose")), ToolInput(tag="in_number_sequences_simulated", input_type=Int(optional=True), prefix="-N", doc=InputDocumentation(doc=": number of sequences in the simulated msa, N=0 for use all  [0]")), ToolInput(tag="in_noss", input_type=Boolean(optional=True), prefix="--noss", doc=InputDocumentation(doc=": assume unstructured, even if msa has a given ss_cons")), ToolInput(tag="in_in_format", input_type=String(optional=True), prefix="--informat", doc=InputDocumentation(doc=": specify format")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc=": specify a directory for all output files")), ToolInput(tag="in_send_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": send output to file <f>, not stdout")), ToolInput(tag="in_one_msa", input_type=Boolean(optional=True), prefix="--onemsa", doc=InputDocumentation(doc=": if file has more than one msa, analyze only the first one")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc=": set RNG seed to <n>  [0]")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_msa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc=": specify a directory for all output files")), ToolOutput(tag="out_send_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_send_output_file", type_hint=File()), doc=OutputDocumentation(doc=": send output to file <f>, not stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    R_Scape_Sim_Nobps_V0_1_0().translate("wdl", allow_empty_container=True)

