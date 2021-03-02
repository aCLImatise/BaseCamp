from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Fasta_Ushuffle_V0_1_0 = CommandToolBuilder(tool="fasta_ushuffle", base_command=["fasta_ushuffle"], inputs=[ToolInput(tag="in_print_original_unshuffled", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Print original (unshuffled) in output file.")), ToolInput(tag="in_specifies_let_size", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="specifies the let size")), ToolInput(tag="in_specifies_seed_random", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="specifies the seed for random number generator.")), ToolInput(tag="in_input_sequence_print", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="For each input sequence, print N permutations (default is 1).\nUse this only for debugging.")), ToolInput(tag="in_retry_n_times", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="Retry N times to find a new shuffle (Default is 10). After N retries, a warning is printed, and a non-shuffled sequence will be written.")), ToolInput(tag="in_ag_tag_tag_tag_tag_tagtagtagtagtagtagagtg", input_type=String(), position=0, doc=InputDocumentation(doc=">dummy2")), ToolInput(tag="in_ctgagagtcacacatgattttaca_aca_acc_at_gaag", input_type=String(), position=1, doc=InputDocumentation(doc="This is not a valid input file:")), ToolInput(tag="in_agtagtagtagtagtagtagtag_tag", input_type=String(), position=0, doc=InputDocumentation(doc="TAGTAGAGTG")), ToolInput(tag="in_ctgagagtcacacatgattttaca_ac", input_type=String(), position=0, doc=InputDocumentation(doc="AACCATGAAG"))], outputs=[ToolOutput(tag="out_print_original_unshuffled", output_type=File(optional=True), selector=InputSelector(input_to_select="in_print_original_unshuffled", type_hint=File()), doc=OutputDocumentation(doc="Print original (unshuffled) in output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Ushuffle_V0_1_0().translate("wdl", allow_empty_container=True)

