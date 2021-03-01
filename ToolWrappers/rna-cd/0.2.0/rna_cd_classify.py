from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Directory, File, Float

Rna_Cd_Classify_V0_1_0 = CommandToolBuilder(tool="rna_cd_classify", base_command=["rna_cd-classify"], inputs=[ToolInput(tag="in_chunksize", input_type=Int(optional=True), prefix="--chunksize", doc=InputDocumentation(doc="Chunksize in bases. Default = 100")), ToolInput(tag="in_contig", input_type=String(optional=True), prefix="--contig", doc=InputDocumentation(doc="Name of mitochrondrial contig in your BAM\nfiles. Default = chrM")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores to use for processing of BAM\nfiles. Default = 1")), ToolInput(tag="in_directory", input_type=Directory(optional=True), prefix="--directory", doc=InputDocumentation(doc="Path to directory with BAM files to be\ntested. Mutually exclusive with --list-items")), ToolInput(tag="in_list_items", input_type=File(optional=True), prefix="--list-items", doc=InputDocumentation(doc="Path to file containing list of paths to BAM\nfiles to be tested. Mutually exclusive with\n--directory")), ToolInput(tag="in_model", input_type=File(optional=True), prefix="--model", doc=InputDocumentation(doc="Path to model.  [required]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output file containing")), ToolInput(tag="in_unknown_threshold", input_type=Float(optional=True), prefix="--unknown-threshold", doc=InputDocumentation(doc="Threshold of most likely probability below\nwhich sampleswll be assinged as 'unknown'.\nDefault = 0.75")), ToolInput(tag="in_classifications_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[required]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output file containing"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rna_Cd_Classify_V0_1_0().translate("wdl", allow_empty_container=True)

