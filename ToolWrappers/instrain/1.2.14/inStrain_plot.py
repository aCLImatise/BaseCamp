from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Instrain_Plot_V0_1_0 = CommandToolBuilder(tool="inStrain_plot", base_command=["inStrain", "plot"], inputs=[ToolInput(tag="in_is", input_type=String(optional=True), prefix="--IS", doc=InputDocumentation(doc="an inStrain profile object (default: None)")), ToolInput(tag="in_pl", input_type=Boolean(optional=True), prefix="-pl", doc=InputDocumentation(doc="[PLOTS [PLOTS ...]], --plots [PLOTS [PLOTS ...]]\nPlots. Input 'all' or 'a' to plot all\n1) Coverage and breadth vs. read mismatches\n2) Genome-wide microdiversity metrics\n3) Read-level ANI distribution\n4) Major allele frequencies\n5) Linkage decay\n6) Read filtering plots\n7) Scaffold inspection plot (large)\n8) Linkage with SNP type (GENES REQUIRED)\n9) Gene histograms (GENES REQUIRED)\n10) Compare dendrograms (RUN ON COMPARE; NOT PROFILE)\n(default: a)")), ToolInput(tag="in_minimum_breadth", input_type=Int(optional=True), prefix="--minimum_breadth", doc=InputDocumentation(doc="Minimum breadth of coverage for genome to make it into\nplot (from 0-1). (default: 0)")), ToolInput(tag="in_only_plot_genomes", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\nOnly plot genomes with the names provided in this\nargument (default: None)")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="Number of processes to use (default: 6)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Make extra debugging output (default: False)")), ToolInput(tag="in_plots", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Instrain_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

