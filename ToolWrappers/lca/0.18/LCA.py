from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Lca_V0_1_0 = CommandToolBuilder(tool="LCA", base_command=["LCA"], inputs=[ToolInput(tag="in_assignments_ref_database", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="assignments of sequences to ref database in blast .m8 tab delimited format")), ToolInput(tag="in_file_entries_corresponding", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="file with entries corresponding to sequences in ref database, that was mapped against")), ToolInput(tag="in_file_containing_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="file containing the sequence name and the assigned taxonomy against the ref database")), ToolInput(tag="in_mat_high", input_type=Boolean(optional=True), prefix="-matHigh", doc=InputDocumentation(doc="calculate abundance of reads at different taxonomic levels. An extra file (derriving from -o) per tax level is written")), ToolInput(tag="in_show_hit_read", input_type=Boolean(optional=True), prefix="-showHitRead", doc=InputDocumentation(doc="if a hit can be uniquely assigned to a single entry in the ref database, this is reported in the -o file.")), ToolInput(tag="in_no_bl_filter", input_type=Boolean(optional=True), prefix="-no_bl_filter", doc=InputDocumentation(doc="use only, if custom scripts were used to pre-filter filter -i file and in-built filter should be deactivated")), ToolInput(tag="in_read_input", input_type=Boolean(optional=True), prefix="-readInput", doc=InputDocumentation(doc="[miTag / OTU] changes the tags attached to single reads")), ToolInput(tag="in_lca_frac", input_type=Boolean(optional=True), prefix="-LCAfrac", doc=InputDocumentation(doc="[0-1] the fraction of matching taxonomies required to accept this taxonomy on the different levels. Default='0.8'")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="-id", doc=InputDocumentation(doc="comma seperated list of min %identity, to accept a database hit as applicable to this taxonomic level, starting from Species and going to Kingdom. Default='97,95,93,91,88,78,0'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lca_V0_1_0().translate("wdl", allow_empty_container=True)

