from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int, Directory

Card_Trick_Search_V0_1_0 = CommandToolBuilder(tool="card_trick_search", base_command=["card-trick", "search"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input term to search in CARD ontology. Provide a\nunique term o several using --batch option")), ToolInput(tag="in_format_output", input_type=String(optional=True), prefix="--format_output", doc=InputDocumentation(doc="Output format. stdout, csv, tsv or json")), ToolInput(tag="in_output_name", input_type=String(optional=True), prefix="--output_name", doc=InputDocumentation(doc="Output name.")), ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="Path containing CARD ontology. Default is user’s home")), ToolInput(tag="in_batch", input_type=Boolean(optional=True), prefix="--batch", doc=InputDocumentation(doc="Provide this option if input is a file containing\nmultiple terms, one per line.")), ToolInput(tag="in_input_two", input_type=Int(optional=True), prefix="--input_2", doc=InputDocumentation(doc="Input term to search in results retrieved from first\ninput. Provide a unique term o several using --batch\noption")), ToolInput(tag="in_term_two", input_type=String(optional=True), prefix="--term_2", doc=InputDocumentation(doc="The type of term provided to search for the second\ninput. Default: any")), ToolInput(tag="in_batch_two", input_type=Boolean(optional=True), prefix="--batch_2", doc=InputDocumentation(doc="Provide this option if input_2 is a file containing\nmultiple terms, one per line.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not print process information")), ToolInput(tag="in_directory_dot", input_type=Directory(), position=0, doc=InputDocumentation(doc="-t {ARO,gene,antibiotic,target,any}, --term {ARO,gene,antibiotic,target,any}"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Card_Trick_Search_V0_1_0().translate("wdl", allow_empty_container=True)

