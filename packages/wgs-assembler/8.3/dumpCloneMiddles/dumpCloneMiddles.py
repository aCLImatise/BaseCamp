from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Dumpclonemiddles_V0_1_0 = CommandToolBuilder(tool="dumpCloneMiddles", base_command=["dumpCloneMiddles"], inputs=[ToolInput(tag="in_attempt_guess_options", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="-- attempt to guess all the required options, if your assembly\nfollows runCA-OBT naming conventions.")), ToolInput(tag="in_ctg", input_type=Boolean(optional=True), prefix="-ctg", doc=InputDocumentation(doc="-- dump contigs")), ToolInput(tag="in_scf", input_type=Boolean(optional=True), prefix="-scf", doc=InputDocumentation(doc="-- dump scaffolds")), ToolInput(tag="in__generate_contig", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="-- generate a single contig or scaffold")), ToolInput(tag="in__generate_scaffolds", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="-- generate only scaffolds larger than min length")), ToolInput(tag="in_suppress_surrogate_fragment", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="-- suppress surrogate fragment placement (possibly multiple placements per frg)")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_other", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dumpclonemiddles_V0_1_0().translate("wdl", allow_empty_container=True)

