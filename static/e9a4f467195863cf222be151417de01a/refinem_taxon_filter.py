from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean, String

Refinem_Taxon_Filter_V0_1_0 = CommandToolBuilder(tool="refinem_taxon_filter", base_command=["refinem", "taxon_filter"], inputs=[ToolInput(tag="in_consensus_tax_on", input_type=Float(optional=True), prefix="--consensus_taxon", doc=InputDocumentation(doc="threshold for accepting a consensus taxon (default:\n50.0)")), ToolInput(tag="in_trusted_scaffold", input_type=Float(optional=True), prefix="--trusted_scaffold", doc=InputDocumentation(doc="threshold for treating a scaffold as trusted (default:\n50.0)")), ToolInput(tag="in_common_tax_a", input_type=Float(optional=True), prefix="--common_taxa", doc=InputDocumentation(doc="threshold for treating a taxon as common (default:\n5.0)")), ToolInput(tag="in_congruent_scaffold", input_type=Float(optional=True), prefix="--congruent_scaffold", doc=InputDocumentation(doc="threshold for treating a scaffold as congruent\n(default: 10.0)")), ToolInput(tag="in_min_classified_per", input_type=Int(optional=True), prefix="--min_classified_per", doc=InputDocumentation(doc="minimum percentage of genes with a classification to\nfilter a scaffold (default: 25.0)")), ToolInput(tag="in_min_classified", input_type=Int(optional=True), prefix="--min_classified", doc=InputDocumentation(doc="minimum number of classified genes required to filter\na scaffold (default: 5)")), ToolInput(tag="in_consensus_scaffold", input_type=Float(optional=True), prefix="--consensus_scaffold", doc=InputDocumentation(doc="threshold of consensus taxon for filtering a scaffold\n(default: 50.0)")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="number of CPUs to use (default: 1)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output of logger")), ToolInput(tag="in_tax_on_profile_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory with results of taxon_profile command")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="file indicating divergent scaffolds"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refinem_Taxon_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

