from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Ecodbtaxstat_V0_1_0 = CommandToolBuilder(tool="ecodbtaxstat", base_command=["ecodbtaxstat"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--DEBUG", doc=InputDocumentation(doc="Set logging in debug mode")), ToolInput(tag="in_without_progress_bar", input_type=Boolean(optional=True), prefix="--without-progress-bar", doc=InputDocumentation(doc="desactivate progress bar")), ToolInput(tag="in_rank", input_type=String(optional=True), prefix="--rank", doc=InputDocumentation(doc="The taxonomic rank at which frequencies have to be\ncomputed. Possible values are: class, family, forma,\ngenus, infraclass, infraorder, kingdom, order,\nparvorder, phylum, species, species group, species\nsubgroup, subclass, subfamily, subgenus, subkingdom,\nsuborder, subphylum, subspecies, subtribe, superclass,\nsuperfamily, superkingdom, superorder, superphylum,\ntribe or varietas. (Default: species)")), ToolInput(tag="in_database", input_type=File(optional=True), prefix="--database", doc=InputDocumentation(doc="ecoPCR taxonomy Database name")), ToolInput(tag="in_taxonomy_dump", input_type=File(optional=True), prefix="--taxonomy-dump", doc=InputDocumentation(doc="NCBI Taxonomy dump repository name")), ToolInput(tag="in_require_rank", input_type=String(optional=True), prefix="--require-rank", doc=InputDocumentation(doc="select sequence with taxid tag containing a parent of\nrank <RANK_NAME>")), ToolInput(tag="in_required", input_type=Int(optional=True), prefix="--required", doc=InputDocumentation(doc="Select the sequences having the ancestor of taxid\n<TAXID>. If several ancestors are specified (with  '-r\ntaxid1 -r taxid2'), the sequences having at least one\nof them are selected")), ToolInput(tag="in_ignore", input_type=String(optional=True), prefix="--ignore", doc=InputDocumentation(doc="ignored taxid\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ecodbtaxstat_V0_1_0().translate("wdl", allow_empty_container=True)

