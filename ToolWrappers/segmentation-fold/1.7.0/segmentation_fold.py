from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Segmentation_Fold_V0_1_0 = CommandToolBuilder(tool="segmentation_fold", base_command=["segmentation-fold"], inputs=[ToolInput(tag="in_specific_rna_sequence", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Specific RNA SEQUENCE (overrules -f)")), ToolInput(tag="in_path_fastafile_containing", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Path of FASTA_FILE containing sequence(s)")), ToolInput(tag="in_enabledisable_segment_functionality", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Enable/disable segment functionality           [1/0]")), ToolInput(tag="in_minimum_hairpin_size", input_type=Int(optional=True), prefix="-H", doc=InputDocumentation(doc="Minimum hairpin size, default: 3               [1,N}")), ToolInput(tag="in_use_custom_file", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="Use custom  'segments.xml'-syntaxed file")), ToolInput(tag="in_number_threads_ndefault", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of threads; 0 = maximum available,      [0,N}\ndefault: 3")), ToolInput(tag="in_default_xml", input_type=File(optional=True), prefix="--default-xml", doc=InputDocumentation(doc="path to default 'segments.xml' on")), ToolInput(tag="in_system", input_type=String(), position=0, doc=InputDocumentation(doc="If you encounter problems with this software, please report it at:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segmentation_Fold_V0_1_0().translate("wdl", allow_empty_container=True)

