from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tripaille_Organism_Add_Organism_V0_1_0 = CommandToolBuilder(tool="tripaille_organism_add_organism", base_command=["tripaille", "organism", "add_organism"], inputs=[ToolInput(tag="in_common", input_type=String(optional=True), prefix="--common", doc=InputDocumentation(doc="The common name of the organism")), ToolInput(tag="in_abbr", input_type=String(optional=True), prefix="--abbr", doc=InputDocumentation(doc="The abbreviation of the organism")), ToolInput(tag="in_comment", input_type=String(optional=True), prefix="--comment", doc=InputDocumentation(doc="A comment / description")), ToolInput(tag="in_infraspecific_rank", input_type=String(optional=True), prefix="--infraspecific_rank", doc=InputDocumentation(doc="The type name of infraspecific name for any taxon\nbelow the rank of species. Must be one of\n['subspecies', 'varietas', 'subvariety', 'forma',\n'subforma']")), ToolInput(tag="in_infraspecific_name", input_type=String(optional=True), prefix="--infraspecific_name", doc=InputDocumentation(doc="The infraspecific name for this organism.")), ToolInput(tag="in_genus", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_species", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Organism_Add_Organism_V0_1_0().translate("wdl", allow_empty_container=True)

