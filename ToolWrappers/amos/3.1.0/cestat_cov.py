from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, Int, File

Cestat_Cov_V0_1_0 = CommandToolBuilder(tool="cestat_cov", base_command=["cestat-cov"], inputs=[ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_disregard_bank_locks", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Disregard bank locks and write permissions (spy mode)")), ToolInput(tag="in_recompute_mean_stdev", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="Recompute mean and stdev from data")), ToolInput(tag="in_dump_scaffoldcontig_iids", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Dump scaffold/contig IIDs instead of EIDs")), ToolInput(tag="in_only_output_ce", input_type=Float(optional=True), prefix="-f", doc=InputDocumentation(doc="Only output CE features outside float deviations")), ToolInput(tag="in_only_output_features", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Only output features at least this length (default: 100)")), ToolInput(tag="in_consider_scaffolds_instead", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Consider scaffolds instead of contigs")), ToolInput(tag="in_input_bedpe_file", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="The input is a BEDPE file, not an AMOS bank")), ToolInput(tag="in_use_library_mean", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Use this as the library mean (default: 2244)")), ToolInput(tag="in_use_library_stdev", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Use this as the library stdev (default: 250)")), ToolInput(tag="in_only_use_pairs", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="Only use pairs that are within rng deviations from the mean (default: 8)")), ToolInput(tag="in_bank_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cestat_Cov_V0_1_0().translate("wdl", allow_empty_container=True)

