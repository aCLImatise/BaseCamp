from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, File, Float, Boolean

Prophyle_Index_V0_1_0 = CommandToolBuilder(tool="prophyle_index", base_command=["prophyle", "index"], inputs=[ToolInput(tag="in_directory_library_sequences", input_type=Directory(optional=True), prefix="-g", doc=InputDocumentation(doc="directory with the library sequences [dir. of the first\ntree]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-j", doc=InputDocumentation(doc="number of threads [auto (8)]")), ToolInput(tag="in_kmer_length", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer length [31]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="log file [<index.dir>/log.txt]")), ToolInput(tag="in_rate_sampling_tree", input_type=Float(optional=True), prefix="-s", doc=InputDocumentation(doc="rate of sampling of the tree [no sampling]")), ToolInput(tag="in_rewrite_index_files", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="rewrite index files if they already exist")), ToolInput(tag="in_mask_repeatslow_regions", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="mask repeats/low complexity regions (using DustMasker)")), ToolInput(tag="in_add_prefixes_node", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="do not add prefixes to node names when multiple trees\nare used")), ToolInput(tag="in_skip_klcp_construction", input_type=Boolean(optional=True), prefix="-K", doc=InputDocumentation(doc="skip k-LCP construction (then restarted search only)")), ToolInput(tag="in_keep_temporary_files", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc="keep temporary files from k-mer propagation")), ToolInput(tag="in_autocomplete_tree_names", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="autocomplete tree (names of internal nodes and FASTA\npaths)")), ToolInput(tag="in_advanced_configuration_json", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[STR [STR ...]]  advanced configuration (a JSON dictionary)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophyle_Index_V0_1_0().translate("wdl", allow_empty_container=True)

