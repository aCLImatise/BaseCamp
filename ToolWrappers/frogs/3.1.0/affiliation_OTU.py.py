from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Affiliation_Otu_Py_V0_1_0 = CommandToolBuilder(tool="affiliation_OTU.py", base_command=["affiliation_OTU.py"], inputs=[ToolInput(tag="in_nb_cpus", input_type=Int(optional=True), prefix="--nb-cpus", doc=InputDocumentation(doc="The maximum number of CPUs used. [Default: 1]")), ToolInput(tag="in_java_mem", input_type=Int(optional=True), prefix="--java-mem", doc=InputDocumentation(doc="Java memory allocation in Go. [Default: 2]")), ToolInput(tag="in_ordered_ranks_levels", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[TAXONOMY_RANKS [TAXONOMY_RANKS ...]], --taxonomy-ranks [TAXONOMY_RANKS [TAXONOMY_RANKS ...]]\nThe ordered ranks levels present in the reference\ndatabank. [Default: ['Domain', 'Phylum', 'Class',\n'Order', 'Family', 'Genus', 'Species']]")), ToolInput(tag="in_rdp", input_type=Boolean(optional=True), prefix="--rdp", doc=InputDocumentation(doc="Use RDP classifier to affiliate OTU")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Preformated reference file.")), ToolInput(tag="in_input_biom", input_type=String(optional=True), prefix="--input-biom", doc=InputDocumentation(doc="Abundance table from the clusterisation program\n(format: BIOM).")), ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Fasta file of OTU's seed (format: fasta).")), ToolInput(tag="in_output_biom", input_type=File(optional=True), prefix="--output-biom", doc=InputDocumentation(doc="File which add affiliation annotations from\nblast/needleall and/or RDPtools to the abundance\ntable. [Default: affiliation.biom]")), ToolInput(tag="in_summary", input_type=String(optional=True), prefix="--summary", doc=InputDocumentation(doc="Report of the results (format: HTML). [Default:\nsummary.html]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="The list of commands executed.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Affiliation_Otu_Py_V0_1_0().translate("wdl", allow_empty_container=True)

