from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, Float, File

Eufindtrna_V0_1_0 = CommandToolBuilder(tool="eufindtRNA", base_command=["eufindtRNA"], inputs=[ToolInput(tag="in_save_trnas_outfile", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=": save tRNAs in <outfile>")), ToolInput(tag="in_relaxed_mode_terminators", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": relaxed mode (no terminators searched for)")), ToolInput(tag="in_strict_mode_discard", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": strict mode (discard tRNAs with missing terminators)")), ToolInput(tag="in_set_max_intronvariable", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc=": set max intron+variable loop length (default=140)")), ToolInput(tag="in_manually_set_cutoff", input_type=Float(optional=True), prefix="-X", doc=InputDocumentation(doc=": manually set final score cutoff to <Score> (def=-31.8)")), ToolInput(tag="in_set_cutoff_", input_type=Float(optional=True), prefix="-I", doc=InputDocumentation(doc=": set cutoff for intermediate score (def=-31.25)")), ToolInput(tag="in_save_trna_components", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc=": save tRNA score components (for Debugging)")), ToolInput(tag="in_check_uppercase_dna", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc=": don't check for uppercase or DNA alphabet")), ToolInput(tag="in_start_nucleotide_numbering", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc=": start nucleotide numbering at <integer> (def=1)")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eufindtrna_V0_1_0().translate("wdl", allow_empty_container=True)

